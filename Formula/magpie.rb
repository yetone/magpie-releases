class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2379/magpie-cli-darwin-arm64"
      sha256 "bfd9b5fe794bfdc94c5698553e8277992765a278d365bfd6afc68f1ec69a6498"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2379/magpie-cli-darwin-amd64"
      sha256 "3d2c494bfd11692fe82e3bdd5832bf1f893d3692c263fe0c938b5b9e4bb5e25d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2379/magpie-cli-linux-arm64"
      sha256 "5ec58ac86cbfb20d2ab5265c3757f1739a598cf2787eab54505b42536d8dc7ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2379/magpie-cli-linux-amd64"
      sha256 "c6cf0fcad647e52c6ecf0c5bb65277f04cfd9297047352b0d6a4764d200edaed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
