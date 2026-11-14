class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4117/magpie-cli-darwin-arm64"
      sha256 "638729a799c0bf30a53ba28e915d522ede66c26e5081349f9762693ee1b29938"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4117/magpie-cli-darwin-amd64"
      sha256 "2b2d8f6ac872bcc960e553158e525139552ea44fd4c4f3739876e8d2f97d6734"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4117/magpie-cli-linux-arm64"
      sha256 "d8c35c98f4f68f7ddb84bb0ddf313afd203598a4c0d6bd1263bf50679c475423"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4117/magpie-cli-linux-amd64"
      sha256 "a6c841dd48943147d5e8b214b1b8af8914d52c60b21dd8dc2388640aebbb2068"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
