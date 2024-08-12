import xml.etree.ElementTree as ET

tree = ET.parse("Authors/Jules Verne/Vingt mille lieues sous les mers/Vingt mille lieues sous les mers.chapitre1.fr-en.xml")
root = tree.getroot()

for paragraph in root.iter("p"):
    source_paragraph = []
    target_paragraph = []

    for sentence in paragraph:
        source_paragraph.append(sentence[0].text)
        target_paragraph.append(sentence[1].text)

    typst_block = "#parallel[\n\t" + " ".join(source_paragraph) + "\n" + "][" + "\n\t" + " ".join(target_paragraph) + "\n]"
    print(typst_block + "\n")
