cask "magpie-app" do
  version "0.1.59"
  sha256 arm:   "25781a54a7a82b6e20729608b399d922a0fb3ccefcca0655440b0e1586d7a7c4",
         intel: "352bf586e06fce9f1acd3f91ed735414ce45beca259b2457f1a799270dbb1ba9"

  arch arm: "arm64", intel: "amd64"

  url "https://github.com/yetone/magpie-releases/releases/download/v0.1.59/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai"

  app "magpie.app"

  zap trash: [
    "~/.config/magpie",
  ]
end
