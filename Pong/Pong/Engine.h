#ifndef ENGINE_H
#define ENGINE_H

#include "SFML/Audio.hpp"
#include "SFML/Graphics.hpp"
#include "Bat.h"
#include "Ball.h"
#include <string>
#include <iostream>

class Engine
{
private:
    
    // resolution of the window
    sf::Vector2f resolution;
    sf::RenderWindow m_Window;
    Ball m_Ball;
    Bat player1_Bat;
    Bat player2_Bat;
    int player1_lives = 3;
    int player2_lives = 3;
   
    // the text  that show the players lives
    sf::Text m_LivesText;
    
    // font of the text (the text owns the the font)
    sf::Font font;
    
    // hit_buffer will hold the sound file of the hit of the bat
    sf::SoundBuffer hit_buffer;
    
    // miss_buffer will hold the sound file when the bat miss to hit the ball
    sf::SoundBuffer miss_buffer;
    
    // the object who is responsible for playing the sound.
    sf::Sound sound;
    
    void input();
    void update();
    void draw();
    
public:
    Engine();
    void start();
    ~Engine() = default;

};

#endif // ENGINE_H
