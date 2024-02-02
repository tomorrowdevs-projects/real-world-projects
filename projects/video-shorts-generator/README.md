# Video Shorts Generation Project

## Objective
Create a desktop application that allows users to produce video shorts or reels suitable for platforms like TikTok by editing an original video file. The application will enable users to input a video, specify the segments to be cut, and output the edited clips in a vertical format. Additionally, the project will explore the feasibility of integrating third-party services for automatic subtitle generation.

## Core Features

- **Local Processing:** The application will run locally on the user's machine, ensuring privacy and speed in video processing.
- **Video Input:** Users can select and input a video file from which they want to create shorts or reels.
- **Cut Points Specification:** Users will have the capability to indicate specific start and end times for the segments they wish to extract from the original video.
- **Vertical Video Output:** The application will automatically adjust the aspect ratio of the extracted segments to suit vertical video formats predominantly used on platforms like TikTok, Instagram Reels, etc.
- **Subtitle Integration (Optional):** Investigate and possibly integrate with AI-driven subtitle generation services to automatically add subtitles to the generated video shorts, enhancing accessibility and viewer engagement.

## Technical Specifications

### Video Processing
- Implement functionality to read and process video files, supporting common formats such as MP4, AVI, and MOV.
- Utilize video editing libraries to enable the specification of cut points and execute the cutting operation accurately.
- Ensure the application can convert horizontal video formats to vertical formats, cropping or adding padding as necessary to maintain video quality.

### Subtitle Generation
- Assess available third-party subtitle generation services for compatibility, efficiency, and accuracy.
- If feasible, integrate a selected service to provide an option for users to generate and embed subtitles in their video shorts automatically.

### User Interface
- Design a simple and intuitive user interface that allows users to easily input their video, specify cut points through a timeline or input fields, and initiate the video processing operation.
- Provide feedback during the processing phase and a preview of the resulting video shorts before saving them.

### Privacy and Data Security
- Ensure all video processing is performed locally on the user's device to safeguard privacy.
- No user data or video content should be transmitted externally without explicit user consent, especially when considering the integration of third-party services for subtitles.

## Development Roadmap

1. **Requirement Analysis and Planning:** Detailed planning phase to outline the project scope, identify necessary libraries and tools, and plan the user interface design.
2. **Development of Video Processing Capabilities:** Focus on implementing core functionality for inputting videos, specifying segments, and outputting edited clips in a vertical format.
3. **Subtitle Service Integration (Optional):** Research and potentially integrate a third-party service for subtitle generation, including testing for accuracy and performance.
4. **User Interface Implementation:** Develop the application's user interface, emphasizing ease of use and accessibility.
5. **Testing and Optimization:** Conduct thorough testing to ensure functionality, performance, and user experience meet project standards. Optimize based on feedback and technical requirements.
6. **Documentation and Release:** Prepare comprehensive documentation for users and release the first version of the application.

# CREDITS

Simone Torrisi [https://github.com/storrisi]
