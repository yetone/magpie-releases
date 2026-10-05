class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.960/magpie-cli-darwin-arm64"
      sha256 "4da0cdb0e191db5105a8aa4c8ffe0b695d49aed8a7d2f74f6133705f0df13685"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.960/magpie-cli-darwin-amd64"
      sha256 "7641084beffade72ad72ac109bcd6feabe38b1c609e580ef99c745d58b966cf3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.960/magpie-cli-linux-arm64"
      sha256 "bda58a8a1779812aa5dcb0f25403d82f412d9b36a1b30b8d72fe658631f610a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.960/magpie-cli-linux-amd64"
      sha256 "2122304856cef62be1f31cc0c2d377dbe21e6299036c09966dc2e128243be44c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
