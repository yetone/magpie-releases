cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3502"
  sha256 arm:   "23c3596fa418db8719bfd7884b64ce7bf08a9e5d53461237fc03b837e68b41d5",
         intel: "94e9ceac9eb6becd12263e0ad0fd4a2b4e336beab95c1c39fa956f4868b3afcd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
