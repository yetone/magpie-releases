cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4288"
  sha256 arm:   "99802917debde48440b8cd8fbb332f50414d9500622c90d79201f6d6ba74d674",
         intel: "ca91d1e9090daaf3a9929d9d00fd746ef1c184766450e8badb168a07108344d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
