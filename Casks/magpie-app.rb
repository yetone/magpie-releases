cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4601"
  sha256 arm:   "99bd62a1784fe4308b425b2e49465b39a70c801dbf4d8c80f7a8f5eba2c34269",
         intel: "f809ea207b48707e26af9bcba637093424cc431638507347dd7729eeb4607846"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
