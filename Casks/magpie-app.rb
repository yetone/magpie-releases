cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1135"
  sha256 arm:   "8fe9f66861f64370d380b104f096b51c598e444252a93c5a9c0ba17d48ce0507",
         intel: "59600b9d73c5e6f792b8ebc0bc5eaf73f3bfd38730838c1718b6f5d0fad33445"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
