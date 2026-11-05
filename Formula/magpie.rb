class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3073/magpie-cli-darwin-arm64"
      sha256 "be7a5ac89622a1407afd41078fbd48b4b68885269d772be81f056c1cf6120ac3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3073/magpie-cli-darwin-amd64"
      sha256 "c23a657fd2b53b7b593af170c8966004afe4dc06588730b5c2972692f2d930b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3073/magpie-cli-linux-arm64"
      sha256 "b25299c0d27879177f6530a7d2aff04a1155536229a918d5248ee6cef4e6eee5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3073/magpie-cli-linux-amd64"
      sha256 "259ac9b5896830c0a8955f36bfa42c29a55f866891012596948dc328bf455c3a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
