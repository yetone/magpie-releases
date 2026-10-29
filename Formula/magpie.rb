class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2056/magpie-cli-darwin-arm64"
      sha256 "242bfe10aaba13cdfa996664fcd9a74312e817a0800ef7bba92db63d8837f8f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2056/magpie-cli-darwin-amd64"
      sha256 "df24e64dd1adc7852f6263bf6464f09e459c2b45ed3fd74ecc3cf55493671eb8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2056/magpie-cli-linux-arm64"
      sha256 "c015019dcb5daf4743c097194eb6ee4312a8e9a1257fdbcc54542b905a9c7c34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2056/magpie-cli-linux-amd64"
      sha256 "7c10939ae0f4c2dbaf9dd6dd0c213917e91b07bc8dcb62ba2d2b73e5c5f8a863"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
