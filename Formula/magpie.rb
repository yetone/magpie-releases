class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3081/magpie-cli-darwin-arm64"
      sha256 "21d192c0d452c9088a57ed08a2fee7d1b69bb5b7d8116502c4a1b19aa5b2b414"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3081/magpie-cli-darwin-amd64"
      sha256 "7a825079f3d61cee10646b5253e1036f1753d4b6e738de9132fde00e72be5652"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3081/magpie-cli-linux-arm64"
      sha256 "3731d62efcabacb0e2bb27274f79d51e4384b386c07b4117986133e5c9c798ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3081/magpie-cli-linux-amd64"
      sha256 "6aaf6d22a43fcb01f3aee865ce721aa99fcc509ce9f4938bcff77fc134996adb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
