class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4371/magpie-cli-darwin-arm64"
      sha256 "912ca50221b0450383363834a5df47e36cd4d42e5aa31386916ee2cd3bac9bf1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4371/magpie-cli-darwin-amd64"
      sha256 "df1ac9c4ad40a2a9bb505f8c278e34e89d64f432789efdd18cefe5fbae3dfc22"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4371/magpie-cli-linux-arm64"
      sha256 "5081e87d3a89bf35892cee74ad7266a04dfaba0a56bbe184f3697d56b62bc5a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4371/magpie-cli-linux-amd64"
      sha256 "fa53d66168d3b2fcbb21f1c5c5f18467becd678193a0f52e596a234bd027a1f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
