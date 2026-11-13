cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4085"
  sha256 arm:   "0f7d816dc188d611b3b7ada2b15301e3b9b33b07c1e75332059a8ce244d29d4d",
         intel: "59cb45ad389ecf8cc8b468dc31d8e5d126aaf344c932dcdb30ef22f25387ea7d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
