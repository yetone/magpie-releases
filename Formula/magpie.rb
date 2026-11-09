class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3457/magpie-cli-darwin-arm64"
      sha256 "4b21b8518bee7eab78feac7e595a78a2e06fe8edd52831d80a13197142c5edd4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3457/magpie-cli-darwin-amd64"
      sha256 "64472d92d918935cca1abfdc8ffe9dba1df42e36c8019460cce6fab73346f08e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3457/magpie-cli-linux-arm64"
      sha256 "af9e6db4d814744dc01a6ac01cbdfc0da9918854ae6a571250952986e45b67e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3457/magpie-cli-linux-amd64"
      sha256 "7812d1a24df06854868b8bd5223714bb24613adfb73b9ea5806883b9965c5f98"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
