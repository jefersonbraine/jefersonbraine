String[][] strs = new String[6][2];
PFont font;

void setup() {
  size(1920, 1080);
  font = createFont("HelveticaNeue-48.vlw", 48);
  textFont(font);
  frameRate(30);
  textAlign(CENTER);
  textSize(40);
  background(255);
  fill(0);

  strs[0][0] = "Ei, tudo bem!";
  strs[0][1] = "Meu nome é Jeferson Braine.";

  strs[1][0] = "Eu sou um especialista em Direito Notarial e Civil virando um programador!😅😅";
  strs[1][1] = "Sou de perto de Curitiba/PR.";

  strs[2][0] = "Estou apredendo a programar por conta a cerca de 4 meses!👨🏻‍💻👨🏻‍💻";
  strs[2][1] = "Estou aprendendo JavaScript como minha linguagem de programação e também sei usar HTML & CSS.";

  strs[3][0] = "Estou botando em prática tudo que posso, codando, pesquisando, lendo e anotando bastante coisa";
  strs[3][1] = "Como pode ver abaixo estou me dedicando todos os dias para ser o melhor a cada dia.";

  strs[5][0] = "Também sou o criador da do iniciando.dev no instagram! 💪";
  strs[5][1] = "Aondo posto algumas coisas sobre meus estudos e dicas que me ajudaram";
}

int i = 0;
boolean delete = false;
int s = 0;
int offset = 50;
int mainFontSize = 60;
int secondaryFontSize = 40;


void draw() {
  background(255);

  if (s < strs.length) {
    if ((strs[s][0].length() >= i || strs[s][1].length() >= i) && !delete) {
      if (strs[s][0].length() >= i) {
        textSize(mainFontSize);
        text(strs[s][0].substring(0, i), width/2, height/2 - offset);
      } else {
        textSize(mainFontSize);
        text(strs[s][0], width/2, height/2 - offset);
      }
      if (strs[s][1].length() >= i) {
        textSize(secondaryFontSize);
        text(strs[s][1].substring(0, i), width/2, height/2 + offset);
      } else {
        textSize(secondaryFontSize);
        text(strs[s][1], width/2, height/2 + offset);
      }
      i++;
    } else {
      if (!delete) {
        delay(1500);
      }
      delete = true;
    }


    if (delete) {

      if (i > 0) {
        if (i < strs[s][0].length()) {
          textSize(mainFontSize);
          text(strs[s][0].substring(0, i - 1), width/2, height/2 - offset);
        } else {
          textSize(mainFontSize);
          text(strs[s][0], width/2, height/2 - offset);
        }
        if (i < strs[s][1].length()) {
          textSize(secondaryFontSize);
          text(strs[s][1].substring(0, i - 1), width/2, height/2 + offset);
        } else {
          textSize(secondaryFontSize);
          text(strs[s][1], width/2, height/2 + offset);
        }
        i--;
      } else {
        delete = false;
        s++;
      }
    }
    //print(i + " ");
    //s++;
  }
}
