class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3615/magpie-cli-darwin-arm64"
      sha256 "18196295e65eaae1a8f6847a92f9646a70e8bfc7f218a7966a372b2f0a3918d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3615/magpie-cli-darwin-amd64"
      sha256 "27d641c5ea8aa94c841684990eb1ed5c568630249ebaaf74b6e7f762a7f511f7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3615/magpie-cli-linux-arm64"
      sha256 "fe089ae794281666d12cd40e7202d94606d3272737c8ef5612a4ca87d2704fa9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3615/magpie-cli-linux-amd64"
      sha256 "feae1dd9d1df06377b75b304a6c5a932de7b538361babb70785af10ad3102a5b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
