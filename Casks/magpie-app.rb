cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4675"
  sha256 arm:   "a3ebbddf25a237449893f6b8992d5fa0e0183035409eb3af14e20bc0d52e9795",
         intel: "491ba3b2cf504f8e98581dc97aff85c02fae73f4feff4e0c7a66790ec9e93fcb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
