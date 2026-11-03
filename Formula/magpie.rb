class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2855/magpie-cli-darwin-arm64"
      sha256 "8f052159fd692fff859dd5df13204b2b98344f05e18117e203b18d4096f07fce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2855/magpie-cli-darwin-amd64"
      sha256 "cad63a689d6e6bbe0862f03d65d102935c77d525d200a56a70932176ce6701ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2855/magpie-cli-linux-arm64"
      sha256 "d65dbc2657db5c3b343d30864483fbb307d4c6055bd45ab8f9c271625c5bf627"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2855/magpie-cli-linux-amd64"
      sha256 "8ceb7dbb7eb4ddeaa7180c96aa2ce9c3bf1d37248c1edf74849277bc131d08c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
