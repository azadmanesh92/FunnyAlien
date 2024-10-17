 

function alienGui()
    % Create a figure
    fig = figure('Position',[100,100,800,600], 'MenuBar', 'none', 'Name','Alien Life Form Analysis Tool', 'NumberTitle', 'off', 'Resize', 'off');
    
    % Create a menu for navigation
    uicontrol('Style', 'text', 'Position', [50,550,700,30], 'String', 'Welcome Alien! Click a button to know more about Humans!', 'FontSize', 14, 'HorizontalAlignment', 'center');

    % Create buttons for each attribute
    uicontrol('Style', 'pushbutton', 'String', 'What are Humans?', 'Position', [50,450,150,50], 'Callback', @whatAreHumans);
    uicontrol('Style', 'pushbutton', 'String', 'What do Humans do?', 'Position', [250,450,150,50], 'Callback', @whatDoHumansDo);
    uicontrol('Style', 'pushbutton', 'String', 'How long do they live?', 'Position', [450,450,150,50], 'Callback', @howLongDoTheyLive);
    uicontrol('Style', 'pushbutton', 'String', 'What do they want?', 'Position', [650,450,150,50], 'Callback', @whatDoTheyWant);
    uicontrol('Style', 'pushbutton', 'String', 'How do they die?', 'Position', [50,350,150,50], 'Callback', @howDoTheyDie);
    uicontrol('Style', 'pushbutton', 'String', 'Can they travel to the stars?', 'Position', [250,350,150,50], 'Callback', @canTravelToStars);
    
    % Create an area for messages
    msgArea = uicontrol('Style', 'text', 'Position', [50,200,700,130], 'FontSize', 12, 'HorizontalAlignment', 'left', 'BackgroundColor', 'white');

    function whatAreHumans(~, ~)
        msgArea.String = strcat('Humans are bipedal primates. They possess complex brains that allow for...', newline, 'a variety of emotions and creativity. They are known for their curiosity and...', newline, 'Collaborative nature. What a curious species!  :)');
    end

    function whatDoHumansDo(~, ~)
        msgArea.String = strcat('Humans perform activities ranging from mundane tasks to extraordinary feats.', newline, 'They create art, build societies, explore knowledge, and indulge in ', newline, 'humoristic exchanges. Imagine a species creating something called comedy!');
    end

    function howLongDoTheyLive(~, ~)
        msgArea.String = strcat('Humans have a varied lifespan; on average, they live around 72-80 Earth years.', newline, 'However, some manage to exceed is age with care, love, and a little bit of luck.');
    end

    function whatDoTheyWant(~, ~)
        msgArea.String = strcat('Humans seem to want several things: happiness, love, understanding, ', newline, 'and a good coffee! They also strive for knowledge and a way to understand their universe.', newline, 'Not too ambitious, are they?!');
    end

    function howDoTheyDie(~, ~)
        msgArea.String = strcat('Humans can expire due to numerous reasons: age, sickness, and sometimes, ', newline, 'from accidentally falling into a strange pit or consuming too much unhealthy food!');
    end

    function canTravelToStars(~, ~)
        msgArea.String = strcat('Ah, the stars! Humans have a penchant for exploration.', newline, 'They have developed technologies to launch probes and rovers into space.', newline, 'If they really apply themselves, they may develop faster-than-light travel. Who knows?');
    end
end