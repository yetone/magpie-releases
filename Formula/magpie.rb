class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1033/magpie-cli-darwin-arm64"
      sha256 "49a112d4d73a48edf8cc24983e28fb9065da13b5d313caff119490e1b0692572"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1033/magpie-cli-darwin-amd64"
      sha256 "51a76e4e7994e909f8864e0065bf71bd6748d28179b919f3e2b98d78568b73dd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1033/magpie-cli-linux-arm64"
      sha256 "2a1745698b99c40a7dbecc511ffe1811dbbcc92f4d36b80f354a029493b42cc7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1033/magpie-cli-linux-amd64"
      sha256 "0d6c365937ba6b60631f23d996b1cf4c62648f7bb7c37609572fb2bdc3286f2e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
