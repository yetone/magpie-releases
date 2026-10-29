class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2053/magpie-cli-darwin-arm64"
      sha256 "ad4eb1c6c11009685cdd3241970d2096e431d7f8837d408ddd4c9f955cea1ccb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2053/magpie-cli-darwin-amd64"
      sha256 "2a730b7198f75a4db5a072bf8c7c7b665965dd33159bc7e3f760cf0824d98940"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2053/magpie-cli-linux-arm64"
      sha256 "5fdf675a7d510243717931f1b6afd70fdd4eb653b064cf02e6abe1c1dba253d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2053/magpie-cli-linux-amd64"
      sha256 "6c2cba8c03530c64fb95a8e199671134a2ab15b2358d78b2bc409b748c3b6bad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
