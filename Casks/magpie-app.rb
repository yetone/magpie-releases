cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3855"
  sha256 arm:   "0b326a486aa576cbddac37e80a89d0ab7c27ccde041db39b681ba8b85ad02946",
         intel: "a1ee82af41d07a2fae60341afda43d215f5fb7d2bf85bf9a0c8d9178e8dc2f99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
