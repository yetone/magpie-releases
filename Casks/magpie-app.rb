cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3581"
  sha256 arm:   "738eeee8d1c392b08f1cfaafb67173d2c9f265838e54b545de0d3bec9b50bac9",
         intel: "b216742b80d42c35a7d98e284b2058371d0efa8595d954f196272698bace9ad3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
