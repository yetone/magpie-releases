class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1979/magpie-cli-darwin-arm64"
      sha256 "e4ca238fcceb951b65975775ec5b5902e328f6a9ce3ee4d6c1b3f1458a78e40b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1979/magpie-cli-darwin-amd64"
      sha256 "07ce774270eaadb5afd39986c2165b40b39f09cf589bfbe102a85b9cda602c17"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1979/magpie-cli-linux-arm64"
      sha256 "77727c80d225e79ffd973bbdd1310742536112509e4c234f54be10af79ec9d60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1979/magpie-cli-linux-amd64"
      sha256 "f4c0a4040ac77d0c32ffddc3bd857618b6dda754da8e268d149e9847ae393fd5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
