#ifndef BAT_H
#define BAT_H

#include "SFML/Graphics.hpp"

class Bat
{
private:
    sf::Vector2f m_Position; 
    sf::RectangleShape m_BatShape;
    float m_Speed = 0.3f;
    
public:
    Bat() = default;
    Bat(float startX, float startY);
    sf::FloatRect getPosition();
    sf::RectangleShape getShape();
    void moveUp();
    void moveDown();
    
    // keep the bat in the screen when the bat excced the 0 at y axis to the negative values of y axis
    void keepBatUp();
    
    // keep the bat in the screen when the bat excced the max_value of the y axis (yResolutionScreen)
    void keepBatDown(float yResolutionScreen);
    void update();
    
    ~Bat() = default;
};

#endif // BAT_H
