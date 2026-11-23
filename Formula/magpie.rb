class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4727/magpie-cli-darwin-arm64"
      sha256 "7f68172744ab409ea614ddffd41a5c34eba4878b047f4f08cb215c448f29af71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4727/magpie-cli-darwin-amd64"
      sha256 "52db3c6f2e699c2ff98086e5c4d9ba5d5378a546419520050b1ab5b3111d8c8b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4727/magpie-cli-linux-arm64"
      sha256 "da03177c19a7e0bbb6b0fa6d139c9ba5502482ff3bb413493e99f90445da30cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4727/magpie-cli-linux-amd64"
      sha256 "1771c8d0582f5ca70a48d508ce39d89cca652b7ee86ab990a323d1e9e50069f6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
