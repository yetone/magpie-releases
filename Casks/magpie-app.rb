cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2722"
  sha256 arm:   "08851db359c11d078f9725e0686f51967bcf264c77535229ad3b024929dfb5c4",
         intel: "a5b2c21159010a936088b59b0bc56022d0fda0ea2515b4aa7a7f8df8e92065e6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
