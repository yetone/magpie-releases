class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4751/magpie-cli-darwin-arm64"
      sha256 "e295f40e0382464a4c21db07963448180de2a36d58370c1caf22f9234e8afe84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4751/magpie-cli-darwin-amd64"
      sha256 "218b17d91e9fa20545c67c50b5c2d4b9da4e8ad28999bd5788e46a92013f1213"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4751/magpie-cli-linux-arm64"
      sha256 "33788068d5ff369df98ed5adee467a7384059987c765fa455f3d445c7073e920"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4751/magpie-cli-linux-amd64"
      sha256 "29257f46e1d078ff37ff6c60ff61929615d0e16d905d606473923171438fe832"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
