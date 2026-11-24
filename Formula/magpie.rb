class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4766/magpie-cli-darwin-arm64"
      sha256 "726b42d321d9ca723d7421c19c8a9f6f23a649678c3232f53ea93c121ad18ae2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4766/magpie-cli-darwin-amd64"
      sha256 "ef9eb5968ff3d58cff83647b817fbe56cfb4e3540a9720103386191a6edc5200"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4766/magpie-cli-linux-arm64"
      sha256 "c8cc2facaeb4cd9fe318f243351e9defd9e9a16868a9259d519c643e49d3ee7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4766/magpie-cli-linux-amd64"
      sha256 "9d723161e77dedc7a3df0f9429dfbbdba9b77180c8cbdf0458985320faff71ae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
