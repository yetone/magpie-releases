class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2434/magpie-cli-darwin-arm64"
      sha256 "2043424fa3529990b7ba51a815abaf48419b9fdcbabab18445aae701276ac932"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2434/magpie-cli-darwin-amd64"
      sha256 "44bfedcfd89851a9c9f9bf4a60566b7b2eec167b718f8419fc9ea45edcd87de7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2434/magpie-cli-linux-arm64"
      sha256 "73b722aa32fc99b3de4525558bea8e6b10a35f457d6eb843063ca75b606168ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2434/magpie-cli-linux-amd64"
      sha256 "307459a40cb6ff9233e49066cccf31ff2a2f457eb45db008ad5acfbc6e7b7846"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
