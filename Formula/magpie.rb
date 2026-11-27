class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4930/magpie-cli-darwin-arm64"
      sha256 "b28516e6edf440bf37b6ec843eb89be761251358b3035b0189153c9017be3f7c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4930/magpie-cli-darwin-amd64"
      sha256 "bf79e50b8345b1c5a50a20412d7204c54135683563e4d8733fe7ee14a5062f69"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4930/magpie-cli-linux-arm64"
      sha256 "6c4c81ecee9cf01bc0b0e111061b16ea2fdc0467b61eeab64788eff3de3b9f4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4930/magpie-cli-linux-amd64"
      sha256 "6836dcdce033b624da7079c1218726859db0f893bcb00e49ba15a6cfb9adef8a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
