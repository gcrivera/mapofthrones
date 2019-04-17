import csv
import json

def parse_ultimate():
    episodes = open('episodes.json')
    episode_table = open('episode_table.txt', 'w+')
    scene_table = open('scene_table.txt', 'w+')

    data = json.load(episodes)
    for episode in data['episodes']:
        episode_data = str(episode['seasonNum']) + '\t' + str(episode['episodeNum']) + '\t' + episode['episodeTitle'] + '\t' + episode['episodeLink'] + '\t' + episode['episodeAirDate'] + '\t' + episode['episodeDescription'] + '\n'
        for scene in episode['scenes']:
            characters = {'characters': scene['characters']}
            characters = json.dumps(characters)

            subLocation = 'NULL'
            if 'subLocation' in scene.keys():
                subLocation = scene['subLocation']

            scene_data = str(episode['seasonNum']) + '\t' + str(episode['episodeNum']) + '\t' + scene['sceneStart'] + '\t' + scene['sceneEnd'] + '\t' + scene['location'] + '\t' + subLocation + '\t' + characters + '\n'

            scene_table.write(scene_data)

        episode_table.write(episode_data)

    episodes.close()
    episode_table.close()
    scene_table.close()

def parse_character():
    character_table = open('character_table.txt', 'w+')
    characters = open('characters.csv')
    reader = csv.DictReader(characters)
    for row in reader:
        character_data = row['name'] + '\t' + row['origin'] + '\t' + row['houseallegiance'] + '\t' + row['culture'] + '\t' + row['religion'] + '\t' + row['image'] + '\n'
        character_table.write(character_data)

    character_table.close()
    characters.close()

if __name__ == '__main__':
    parse_character()
