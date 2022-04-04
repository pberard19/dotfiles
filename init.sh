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

echo "Setup Complete"