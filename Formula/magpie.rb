class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3463/magpie-cli-darwin-arm64"
      sha256 "f298048c5b9e4f5f59e117b3966ddbe4943f20b3ac2265ded34d10bc9a8bcdc7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3463/magpie-cli-darwin-amd64"
      sha256 "66d322cf218a715e807ae925f5f7b4dd2d47d75fe46704b5f287c6181423c099"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3463/magpie-cli-linux-arm64"
      sha256 "b692fbb5bf139eabc56863910859b57bf80106df25c97ec2a17674b63e31c096"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3463/magpie-cli-linux-amd64"
      sha256 "c26c60f699ace34e10d2eb65832b4e4c4e8527c239dbf60645667adea42cd609"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
