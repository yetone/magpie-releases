cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1134"
  sha256 arm:   "e69c3cef446ce72935d529c8623d9d7adc704ee300ffb792d368c51757b42bbe",
         intel: "738d682ab6b0ee44bbaeb37534ad886c73ba9471c26f4e9e237ef0df824ab0c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
