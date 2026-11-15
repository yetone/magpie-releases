cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4231"
  sha256 arm:   "e98f6e77a0494b662e1da780ab7e468afe5bc56d91a731728f45169ff752c61b",
         intel: "b1f282c53353c3775aa82adfc314e67f725ebf7f9e7b7abbf99f0b4cb3e489a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
