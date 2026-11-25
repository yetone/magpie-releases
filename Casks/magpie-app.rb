cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4795"
  sha256 arm:   "9865a6a6049211cb7aea12c34d348c07cd16da17441b0193c69d2bcca7ee81f8",
         intel: "2c5f1b02151ef35f87f61dea14b3f5080104378f76446e1e87d94bbf57aa1362"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
