cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1957"
  sha256 arm:   "3e2d3484dfb58a926368882052d0fcdc71844abb7d4b913e71724843374ab55d",
         intel: "e407a9b8c5bf6acfc72cdecf04a9ffddd7a1517fc2401485fae44ef263e72ec1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
