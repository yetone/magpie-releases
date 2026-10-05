class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.991/magpie-cli-darwin-arm64"
      sha256 "5e66fdd3a04cf5532161183234de6e7beab4edc6ea22e78b83d290fb37ef5422"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.991/magpie-cli-darwin-amd64"
      sha256 "4638ae65c1149b0088b6c89c07179572db2ca7ff233258ca67db0efc91b2da5a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.991/magpie-cli-linux-arm64"
      sha256 "c14ef33e49bee933ec6d26282d6174ab7addea22fc48d8800a87beef54aede89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.991/magpie-cli-linux-amd64"
      sha256 "7337c854b7b3e909ad884927755e1b3c635c25a748642f980ffae9ba8e916d6c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
