cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4998"
  sha256 arm:   "7665460ef9e76bf771971af256e08c591aa813d582e2ca892fee2649f662c4dd",
         intel: "33ec5c13859b242d266badddcf9122f825ae21371edcf2e08ca44a171febfb3b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
