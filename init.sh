echo "Initializing environment..."

echo "Checking homebrew"
if ! command -v brew &> /dev/null
then
	echo "homebrew could not be found - attempting to install it. You may be prompted for your password"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/pb/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

	if ! command -v brew &> /dev/null
	then
		echo "homebrew could not be installed - please check https://brew.sh/"
		exit
	fi
else
	echo "homebrew is already installed"
fi

echo "Checking fortune"
if ! command -v fortune &> /dev/null
then
	echo "Installing fortune - this may take a little while"
	brew install fortune

	if ! command -v fortune &> /dev/null
	then
		echo "fortune could not be installed"
		exit
	fi
else
	echo "fortune is already installed"
fi

echo "Checking pokemonsay"
if ! command -v pokemonsay &> /dev/null
then
	echo "Installing pokemonsay"
	brew tap possatti/possatti
	brew install pokemonsay

	if ! command -v pokemonsay &> /dev/null
	then
		echo "pokemonsay could not be installed - see https://github.com/possatti/pokemonsay"
		exit
	fi
else
	echo "pokemonsay is already installed"
fi

echo "Checking terraform"
if ! command -v terraform &> /dev/null
then
	echo "Installing terraform"
	brew install terraform

	if ! command -v terraform &> /dev/null
	then
		echo "terraform could not be installed - see https://formulae.brew.sh/formula/terraform"
		exit
	fi
else
	echo "terraform is already installed"
fi


echo "Setup Complete"
