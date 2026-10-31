class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2355/magpie-cli-darwin-arm64"
      sha256 "d9d0f9b31eacce159689ed8f2532886faf6c8f6d527ad7d35f00958f52fe8fb1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2355/magpie-cli-darwin-amd64"
      sha256 "9eec666fa1ae3715d0f82883c08f0833d80d2fb2814817777ab1a9276ca76fda"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2355/magpie-cli-linux-arm64"
      sha256 "46c4043f5bb18c948ca81e0332661e06b59fa67fe217f957820514d1cb6f1684"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2355/magpie-cli-linux-amd64"
      sha256 "c162f7a934c32c8948e405150f91f017c472efe22f00788955c7034be3a1c8bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
