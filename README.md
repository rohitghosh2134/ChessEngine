# Chess

![ezgif com-gif-maker](https://user-images.githubusercontent.com/31930832/121518639-589d7880-ca0e-11eb-9dd8-2b06dc1378ee.gif)

## Files:
1. `ChessMain.py`: Handles user input and game visuals.
2. `ChessEngine.py`: Implements the chess logic using a brute-force algorithm.
3. `ChessEngineAd.py`: Implements an optimized chess algorithm.
4. `ChessBot.py`: Contains logic for a bot that evaluates captures, defenses, and positional advantages.
5. `config.py`: Configuration file to set player modes, board colors, and other parameters.

## Dependencies:
- `pygame`: Install using `pip install pygame`

## Running the Game

### Running Locally (Without Docker)
To play the game using the optimized algorithm:
```sh
python ChessMain.py adv
```
To play using the brute-force algorithm:
```sh
python ChessMain.py
```

### Running with Docker

#### 1. Build the Docker Image
Run the following command in the project directory:
```sh
docker build -t chess-engine .
```

#### 2. Run the Game
For brute-force algorithm:
```sh
docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix chess-engine
```

For optimized algorithm:
```sh
docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix chess-engine python ChessMain.py adv
```

#### 3. Running with GUI on Linux:
- Ensure X11 forwarding is enabled by running:
  ```sh
  xhost +local:
  ```
- Then, start the container with:
  ```sh
  docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix chess-engine
  ```

#### 4. Running with GUI on Windows (WSL2)
- Install an X server like **VcXsrv** or **Xming**.
- Set the `DISPLAY` variable:
  ```sh
  export DISPLAY=$(ip route | awk '/default/ {print $3}'):0.0
  ```
- Then, run:
  ```sh
  docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix chess-engine
  ```

---

### Changing Player Modes in `config.py`
Modify `config.py` to choose who plays:

| Mode | `PLAYER_ONE_HUMAN` | `PLAYER_TWO_HUMAN` |
|------|--------------------|--------------------|
| Play as White | `True` | `False` |
| Play as Black | `False` | `True` |
| 2 Player Game | `True` | `True` |
| Watch AI Play | `False` | `False` |

---

Now, your chess engine can run inside a Docker container while supporting GUI output! 🚀

