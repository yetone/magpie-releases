class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2010/magpie-cli-darwin-arm64"
      sha256 "59dbc1acb6cb173063aa68166aab24ad3634f5013bd2850a032d0dfb5b4504c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2010/magpie-cli-darwin-amd64"
      sha256 "78142f02a08e94cf725f2f88adebe461e8f3fd27ac8205afb456faab06caca90"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2010/magpie-cli-linux-arm64"
      sha256 "dafcb5f91d03125bffee8177414e379009d0eb467525865c970b49fc1cc52ee2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2010/magpie-cli-linux-amd64"
      sha256 "364abdfd37a920bef0b569dce3548185a6b0a272a0bf910d839a0054bbe869b6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
