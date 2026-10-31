class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2405/magpie-cli-darwin-arm64"
      sha256 "731de5f49bb2798a83821a4064bba0f066d59db2d9d300d355126d0bc84b8b51"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2405/magpie-cli-darwin-amd64"
      sha256 "9749f44e735b075ccdac812e48eb8f5152ba203946970cb2331f1e4418c6bb1b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2405/magpie-cli-linux-arm64"
      sha256 "b5c0bf4f0cc50d35a964ab1a91052d31d468c4abc296e915d9d9ead9bb6f72a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2405/magpie-cli-linux-amd64"
      sha256 "59a68dcfde1fd974aaa91ca538080485fb369fc3e4cab6f525796f8d50b3fc14"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
