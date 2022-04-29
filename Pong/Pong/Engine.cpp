#include "Engine.h"

Engine::Engine()
{
    // set the resolution of the window
    resolution.x = 800;
    resolution.y = 600;

    m_Window.create(sf::VideoMode(resolution.x, resolution.y), "Ping Pong Game");
    
    float length_bat = 50; // the bat height
    
    m_Ball = Ball (resolution.x/2, resolution.y/2);
    player1_Bat = Bat (8, (resolution.y/2)-length_bat/2);
    player2_Bat = Bat (resolution.x-10, (resolution.y/2)-length_bat/2);
    
    
    font.loadFromFile("DS-DIGIT.ttf");  // load the font file
    m_LivesText.setFont(font);
    m_LivesText.setCharacterSize(72);
    m_LivesText.setFillColor(sf::Color::White);
    std::string text = std::to_string(player1_lives) + "   " + std::to_string(player2_lives);
    m_LivesText.setString(text);
    m_LivesText.setPosition(sf::Vector2f((resolution.x/2 - 100)+40, 1));
    
    // load the sound files
    hit_buffer.loadFromFile("Laser_Shoot7.wav");
    miss_buffer.loadFromFile("Hit_Hurt28.wav");
}


void Engine::start()
{
    while (m_Window.isOpen())
    {
        sf::Event event;
        while (m_Window.pollEvent(event))
        {
            if (event.type == sf::Event::EventType::Closed)
                m_Window.close();
        }
        
        input();
        update();
        draw();
    }
    
}
