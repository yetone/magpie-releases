class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4528/magpie-cli-darwin-arm64"
      sha256 "87570cb6923d20e063472393a7674613a2afae0f954d2fdcf117ca872ed5ceef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4528/magpie-cli-darwin-amd64"
      sha256 "2bf86db86d996605587833377da317c62e4cd9e2ee93a9c6f3319eb8c226a49b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4528/magpie-cli-linux-arm64"
      sha256 "2774c15d746d16e235099fd4debe84dee4710846558ab1b8bafd2049f63b554e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4528/magpie-cli-linux-amd64"
      sha256 "e63c303262b10cdb106de6696612b07c7191bbe48a04b5d37c3d21b02530d5b9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
