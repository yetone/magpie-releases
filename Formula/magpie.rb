class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2723/magpie-cli-darwin-arm64"
      sha256 "77d630fe929af8d00ce71b47e03d1ca3ce69b36f2bbecf8fc9080caa16834a81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2723/magpie-cli-darwin-amd64"
      sha256 "1ef222d92200b7f60ea4b75341144b2384c46a0b3a329364d439800c3e7846ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2723/magpie-cli-linux-arm64"
      sha256 "4bf2b42391f22f19216ddbe84967b1324066b293589926f0912d3665d365a782"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2723/magpie-cli-linux-amd64"
      sha256 "3a64ca7559c2dd279ab72c04a8770aace97609f9997c83bde2289a4988d48454"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
