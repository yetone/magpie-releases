class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.897/magpie-cli-darwin-arm64"
      sha256 "e2996ea1a69699ebf65b1f464a9ea2ee1dfeba8e135700a57462788c882ca597"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.897/magpie-cli-darwin-amd64"
      sha256 "faa6aa5df5bd078b71d834b96488eb19eed8a5eaa008dd19dcfdde802687237f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.897/magpie-cli-linux-arm64"
      sha256 "4ff87d37ad5bf6c4ad4969c8916fe3b5b1c1fc46708cec9fb4081d356c14f212"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.897/magpie-cli-linux-amd64"
      sha256 "dbde8cd70afa14edd4454d2285eb71abbaac6187cb25e16112b702d23bb17448"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
