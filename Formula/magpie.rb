class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4779/magpie-cli-darwin-arm64"
      sha256 "63ad523574ce55fcda7196ac8154625a92470b90e42977a4270cb6dd2ddfac16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4779/magpie-cli-darwin-amd64"
      sha256 "efccf6d0930144d836fcb62fc1ad8ca27f109b1633756a4a42cf2073cf6db3ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4779/magpie-cli-linux-arm64"
      sha256 "559b3b74b0418f79769cdb8f691c0b9287d8be4409c73ba3359c166b78383ecd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4779/magpie-cli-linux-amd64"
      sha256 "4031608fefafbe875f08f4455dd5737aab3779b9a58e7c03b2b0c21fc0560d60"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
