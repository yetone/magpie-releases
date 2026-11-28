class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5017/magpie-cli-darwin-arm64"
      sha256 "3d6604ac35d89ce6d0b00d6589f6b8578517852086bf39396816a5a5d3a1ff90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5017/magpie-cli-darwin-amd64"
      sha256 "c7f4632ed67e9fa128bb96498fe047dc1c1907ff7ab6d5c1c66fa37f12714ce0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5017/magpie-cli-linux-arm64"
      sha256 "2656f293f605e80271dfdf4b568e8aa5d7aea744dc6e6b92d9f27d76cb624ca1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5017/magpie-cli-linux-amd64"
      sha256 "1088af7902376c329e8bb195e7174b6867c2069282607d053fc71469bf660469"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
