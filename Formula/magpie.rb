class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4991/magpie-cli-darwin-arm64"
      sha256 "180c6f6dad94399fc74f86860dea5f5e1905d78b616259616a5dab14ecb5dd4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4991/magpie-cli-darwin-amd64"
      sha256 "94d5454e58577017f06d6628e47fb88d3c9ce9f473c556772beef651ff817d46"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4991/magpie-cli-linux-arm64"
      sha256 "8e932f3008263098053126b8737dfd217a65b57dc24f662549d8b6385492a888"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4991/magpie-cli-linux-amd64"
      sha256 "78d47b32c3fb38e692e9bffacc6d1cbd42a362a8347ee9e2b067d7249c7e947a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
