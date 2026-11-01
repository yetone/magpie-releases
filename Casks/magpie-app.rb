cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2592"
  sha256 arm:   "76fae8407081aa12fbf950b12bc1576080b05bacd2175c7652f38054a04e4b05",
         intel: "bc32f5381562c7f6bd4818bc8561bca2f82658f3ee66a72d17b91cbdd4b9370f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
