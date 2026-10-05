cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1042"
  sha256 arm:   "123fe2bbfef6897198ea97123e6b079d39b0e71296dd1bc659c73e2ef8574c16",
         intel: "1fe4d10bd03126c396620c9874187370213a1c6f4c6a9b3a030bc34b54cff04e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
