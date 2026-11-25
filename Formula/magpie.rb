class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4792/magpie-cli-darwin-arm64"
      sha256 "3b82412f8ecd68d07e6de331ccd3ffa0bf98e99c59500f0ea263b39bc002cec6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4792/magpie-cli-darwin-amd64"
      sha256 "04437ddd16fa8caff06d27ecf7800d0a77b9543f4bc486d750ed490a390fac70"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4792/magpie-cli-linux-arm64"
      sha256 "1ba3aa71127e17f92b97cfd7e16973145174e17103508969984baf1cd7408ad1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4792/magpie-cli-linux-amd64"
      sha256 "94d7e61f7aaba4ffa01c892a8ffa6450ac808468c538e15e777c450b783c2243"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
