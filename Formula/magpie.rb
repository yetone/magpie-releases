class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1163/magpie-cli-darwin-arm64"
      sha256 "5849cb23bc9a090305757ec064939e9cd365860a97fc5272e5132fa434dcde58"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1163/magpie-cli-darwin-amd64"
      sha256 "5970e4cd14465be13103b62894099378b09a29a0aa2a9056c624f75450c0de89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1163/magpie-cli-linux-arm64"
      sha256 "cf0749e65e46411beb9370f7f255eef8edca061be66bde33f24f531ab9094e7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1163/magpie-cli-linux-amd64"
      sha256 "4ee626d845d0f20927b2814e3a5980bbdd7be0df97e96fac85d2283e85cb9ead"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
