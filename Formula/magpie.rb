class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4352/magpie-cli-darwin-arm64"
      sha256 "7b653468db454cee919c9bc2a30120d9ff2c20c1ee214570deeffeadcbaf78fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4352/magpie-cli-darwin-amd64"
      sha256 "5528b57b67a36dfe1ad447d50b42adfcabcec053893ae88dbffb8e2694dae085"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4352/magpie-cli-linux-arm64"
      sha256 "a17e1e43705a0a2c2b7846e1fb566e662d5e764e36d4d91a014217874bbe65c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4352/magpie-cli-linux-amd64"
      sha256 "9f3be856aa3a015dba3a65e55991953b2fdc0bd9327102d1c15c69116aa06585"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
